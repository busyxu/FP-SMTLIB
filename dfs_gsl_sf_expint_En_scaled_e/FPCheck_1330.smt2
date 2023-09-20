(declare-fun a_ack!3636 () (_ BitVec 32))
(declare-fun b_ack!3635 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!3636 #x00000000)))
(assert (not (= #x00000000 a_ack!3636)))
(assert (not (= #x00000001 a_ack!3636)))
(assert (not (= #x00000002 a_ack!3636)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3635) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!3635) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (CF_exp b_ack!3635)
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3636)
                  ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
