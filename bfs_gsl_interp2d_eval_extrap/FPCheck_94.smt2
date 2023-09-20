(declare-fun x1_ack!982 () (_ BitVec 64))
(declare-fun x0_ack!990 () (_ BitVec 64))
(declare-fun y0_ack!983 () (_ BitVec 64))
(declare-fun x_ack!988 () (_ BitVec 64))
(declare-fun y_ack!989 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!986 () (_ BitVec 64))
(declare-fun z1_ack!985 () (_ BitVec 64))
(declare-fun z3_ack!987 () (_ BitVec 64))
(declare-fun z0_ack!984 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!990) ((_ to_fp 11 53) x1_ack!982))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!983) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!988) ((_ to_fp 11 53) x0_ack!990))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!988) ((_ to_fp 11 53) x1_ack!982)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!989) ((_ to_fp 11 53) y0_ack!983))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!989) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!988)
                           ((_ to_fp 11 53) x0_ack!990))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!982)
                           ((_ to_fp 11 53) x0_ack!990))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!989)
                           ((_ to_fp 11 53) y0_ack!983))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!983)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!984)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!987)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!985))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!3 a!4) a!5)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z2_ack!986))))))

(check-sat)
(exit)
