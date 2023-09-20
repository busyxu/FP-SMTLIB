(declare-fun x1_ack!720 () (_ BitVec 64))
(declare-fun x0_ack!726 () (_ BitVec 64))
(declare-fun y0_ack!721 () (_ BitVec 64))
(declare-fun x_ack!724 () (_ BitVec 64))
(declare-fun y_ack!725 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!723 () (_ BitVec 64))
(declare-fun z0_ack!722 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!726) ((_ to_fp 11 53) x1_ack!720))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!721) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!724) ((_ to_fp 11 53) x0_ack!726))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!724) ((_ to_fp 11 53) x1_ack!720)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!725) ((_ to_fp 11 53) y0_ack!721))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!725) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!724)
                           ((_ to_fp 11 53) x0_ack!726))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!720)
                           ((_ to_fp 11 53) x0_ack!726))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!725)
                                   ((_ to_fp 11 53) y0_ack!721))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!721))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!722))))
  (FPCHECK_FADD_OVERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!723))))))

(check-sat)
(exit)
