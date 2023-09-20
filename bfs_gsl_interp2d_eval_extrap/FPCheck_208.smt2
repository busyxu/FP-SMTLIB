(declare-fun x1_ack!2125 () (_ BitVec 64))
(declare-fun x0_ack!2132 () (_ BitVec 64))
(declare-fun y0_ack!2126 () (_ BitVec 64))
(declare-fun x_ack!2130 () (_ BitVec 64))
(declare-fun y_ack!2131 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z1_ack!2128 () (_ BitVec 64))
(declare-fun z3_ack!2129 () (_ BitVec 64))
(declare-fun z0_ack!2127 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2132) ((_ to_fp 11 53) x1_ack!2125))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2126) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2130) ((_ to_fp 11 53) x0_ack!2132))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2130) ((_ to_fp 11 53) x1_ack!2125)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2131) ((_ to_fp 11 53) y0_ack!2126))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2131) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2125)
                       ((_ to_fp 11 53) x0_ack!2132))
               ((_ to_fp 11 53) x0_ack!2132))
       ((_ to_fp 11 53) x1_ack!2125)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2125)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2125)
                       ((_ to_fp 11 53) x0_ack!2132)))
       ((_ to_fp 11 53) x0_ack!2132)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2131)
                       ((_ to_fp 11 53) y0_ack!2126))
               ((_ to_fp 11 53) y0_ack!2126))
       ((_ to_fp 11 53) y_ack!2131)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2131)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2131)
                       ((_ to_fp 11 53) y0_ack!2126)))
       ((_ to_fp 11 53) y0_ack!2126)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!2130)
                           ((_ to_fp 11 53) x0_ack!2132))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2125)
                           ((_ to_fp 11 53) x0_ack!2132))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!2131)
                           ((_ to_fp 11 53) y0_ack!2126))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!2126)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!2127)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!2129)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!2128))))
  (FPCHECK_FADD_OVERFLOW (fp.add roundNearestTiesToEven a!3 a!4) a!5))))

(check-sat)
(exit)
