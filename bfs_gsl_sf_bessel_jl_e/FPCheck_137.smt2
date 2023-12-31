(declare-fun a_ack!502 () (_ BitVec 32))
(declare-fun b_ack!501 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!502 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!501) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!501) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!502)))
(assert (not (= #x00000001 a_ack!502)))
(assert (= #x00000002 a_ack!502))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!501) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!501))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!501))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))
(assert (FPCHECK_FDIV_OVERFLOW
  (CF_cos b_ack!501)
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!501)
          ((_ to_fp 11 53) b_ack!501))))

(check-sat)
(exit)
