(declare-fun d_ack!44 () (_ BitVec 32))
(declare-fun a_ack!45 () (_ BitVec 64))
(declare-fun b_ack!42 () (_ BitVec 64))
(declare-fun c_ack!43 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!44 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!45) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!42) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!43) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!45)
                    ((_ to_fp 11 53) b_ack!42))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (FPCHECK_FADD_OVERFLOW a_ack!45 c_ack!43))

(check-sat)
(exit)
