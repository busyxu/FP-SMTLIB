(declare-fun c_ack!721 () (_ BitVec 64))
(declare-fun a_ack!722 () (_ BitVec 32))
(declare-fun b_ack!720 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!721) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!722 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!721) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!722)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!721) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!721) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!722)))
(assert (= #x00000001 a_ack!722))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!721) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!721) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!720) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!721)
                       ((_ to_fp 11 53) b_ack!720)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!721) ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (FPCHECK_FMUL_ACCURACY c_ack!721 c_ack!721))

(check-sat)
(exit)
