(declare-fun c_ack!25 () (_ BitVec 32))
(declare-fun a_ack!26 () (_ BitVec 64))
(declare-fun b_ack!24 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand c_ack!25 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!26) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!24) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
