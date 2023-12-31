(declare-fun b_ack!96 () (_ BitVec 32))
(declare-fun a_ack!98 () (_ BitVec 32))
(declare-fun c_ack!97 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!96 #x00000000)))
(assert (not (bvslt a_ack!98 b_ack!96)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!97) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!97) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!96))
(assert (not (bvslt a_ack!98 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!97) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!97) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!98)))
(assert (not (= #x00000001 a_ack!98)))
(assert (= #x00000002 a_ack!98))
(assert (FPCHECK_FMUL_ACCURACY #x4008000000000000 c_ack!97))

(check-sat)
(exit)
