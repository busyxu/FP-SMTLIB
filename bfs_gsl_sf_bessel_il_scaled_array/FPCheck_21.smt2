(declare-fun b_ack!91 () (_ BitVec 64))
(declare-fun a_ack!92 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!91) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!91) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!92) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!91) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #xffffffff a_ack!92))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!91) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!91)) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!91))
  (fp.abs ((_ to_fp 11 53) b_ack!91))))

(check-sat)
(exit)
