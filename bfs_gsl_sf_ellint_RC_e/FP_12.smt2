(declare-fun c_ack!217 () (_ BitVec 32))
(declare-fun a_ack!218 () (_ BitVec 64))
(declare-fun b_ack!216 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand c_ack!217 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!218) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!216) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!218)
                    ((_ to_fp 11 53) b_ack!216))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!218) ((_ to_fp 11 53) b_ack!216))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!216) ((_ to_fp 11 53) #x7fc9999999999999)))

(check-sat)
(exit)
