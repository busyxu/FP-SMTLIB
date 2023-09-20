(declare-fun x1_ack!893 () (_ BitVec 64))
(declare-fun x0_ack!900 () (_ BitVec 64))
(declare-fun y0_ack!894 () (_ BitVec 64))
(declare-fun x_ack!898 () (_ BitVec 64))
(declare-fun y_ack!899 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z1_ack!896 () (_ BitVec 64))
(declare-fun z3_ack!897 () (_ BitVec 64))
(declare-fun z0_ack!895 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!900) ((_ to_fp 11 53) x1_ack!893))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!894) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!898) ((_ to_fp 11 53) x0_ack!900))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!898) ((_ to_fp 11 53) x1_ack!893)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!899) ((_ to_fp 11 53) y0_ack!894))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!899) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!898)
                           ((_ to_fp 11 53) x0_ack!900))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!893)
                           ((_ to_fp 11 53) x0_ack!900))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!899)
                           ((_ to_fp 11 53) y0_ack!894))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!894)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!895)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!897)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!896))))
  (FPCHECK_FADD_ACCURACY (fp.add roundNearestTiesToEven a!3 a!4) a!5))))

(check-sat)
(exit)
