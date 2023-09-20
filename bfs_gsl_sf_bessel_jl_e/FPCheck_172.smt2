(declare-fun a_ack!620 () (_ BitVec 32))
(declare-fun b_ack!619 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!620 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!619) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!619) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!620)))
(assert (not (= #x00000001 a_ack!620)))
(assert (not (= #x00000002 a_ack!620)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!620)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!619)
                      ((_ to_fp 11 53) b_ack!619))
              a!1))))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd (bvmul a_ack!620 a_ack!620) a_ack!620))
  #x3ff0000000000000))

(check-sat)
(exit)
