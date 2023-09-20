(declare-fun c_ack!37 () (_ BitVec 32))
(declare-fun a_ack!38 () (_ BitVec 64))
(declare-fun b_ack!36 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand c_ack!37 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!38) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!36) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!38)
                    ((_ to_fp 11 53) b_ack!36))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!38) ((_ to_fp 11 53) b_ack!36)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!38) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!38 b_ack!36))

(check-sat)
(exit)
