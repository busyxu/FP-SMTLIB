(declare-fun a_ack!503 () (_ BitVec 32))
(declare-fun b_ack!501 () (_ BitVec 32))
(declare-fun c_ack!502 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!503 #x00000000)))
(assert (not (bvslt b_ack!501 a_ack!503)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!502) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!501) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!502) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!501)))
(assert (= #x00000000 b_ack!501))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!502))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!502))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!502))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!502))
            ((_ to_fp 11 53) #x4010000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x4040000000000000
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!502))
          (fp.abs ((_ to_fp 11 53) c_ack!502)))))

(check-sat)
(exit)
