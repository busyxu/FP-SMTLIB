(declare-fun x1_ack!1984 () (_ BitVec 64))
(declare-fun x0_ack!1990 () (_ BitVec 64))
(declare-fun y0_ack!1985 () (_ BitVec 64))
(declare-fun x_ack!1988 () (_ BitVec 64))
(declare-fun y_ack!1989 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!1987 () (_ BitVec 64))
(declare-fun z0_ack!1986 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1990) ((_ to_fp 11 53) x1_ack!1984))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1985) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1988) ((_ to_fp 11 53) x0_ack!1990))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1988) ((_ to_fp 11 53) x1_ack!1984)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1989) ((_ to_fp 11 53) y0_ack!1985))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1989) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1984)
                       ((_ to_fp 11 53) x0_ack!1990))
               ((_ to_fp 11 53) x0_ack!1990))
       ((_ to_fp 11 53) x1_ack!1984)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1984)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1984)
                       ((_ to_fp 11 53) x0_ack!1990)))
       ((_ to_fp 11 53) x0_ack!1990)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1989)
                       ((_ to_fp 11 53) y0_ack!1985))
               ((_ to_fp 11 53) y0_ack!1985))
       ((_ to_fp 11 53) y_ack!1989)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1989)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1989)
                       ((_ to_fp 11 53) y0_ack!1985)))
       ((_ to_fp 11 53) y0_ack!1985)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1988)
                           ((_ to_fp 11 53) x0_ack!1990))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1984)
                           ((_ to_fp 11 53) x0_ack!1990))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!1989)
                                   ((_ to_fp 11 53) y0_ack!1985))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1985))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!1986))))
  (FPCHECK_FADD_OVERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!1987))))))

(check-sat)
(exit)
