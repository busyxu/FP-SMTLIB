(declare-fun c_ack!22 () (_ BitVec 32))
(declare-fun a_ack!23 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand c_ack!22 #x00000007)))
       #x0000000000000011))
(assert (fp.lt ((_ to_fp 11 53) a_ack!23) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
