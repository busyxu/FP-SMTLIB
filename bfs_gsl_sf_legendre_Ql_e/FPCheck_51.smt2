(declare-fun b_ack!188 () (_ BitVec 64))
(declare-fun a_ack!189 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!188) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!188) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!189 #x00000000)))
(assert (not (= #x00000000 a_ack!189)))
(assert (not (= #x00000001 a_ack!189)))
(assert (not (bvslt #x000186a0 a_ack!189)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!188) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!188) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!188) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW b_ack!188 b_ack!188))

(check-sat)
(exit)
