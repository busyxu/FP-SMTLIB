(declare-fun a_ack!38 () (_ BitVec 32))
(declare-fun b_ack!36 () (_ BitVec 32))
(declare-fun c_ack!37 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!38 #x00000000)))
(assert (not (bvslt b_ack!36 a_ack!38)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!37) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!38 #x00000000)))
(assert (= #x00000000 a_ack!38))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!37) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!37) ((_ to_fp 11 53) #x4010000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!37))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!37))
        ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_ACCURACY #x3fc0000000000000 (fp.abs ((_ to_fp 11 53) c_ack!37))))

(check-sat)
(exit)
