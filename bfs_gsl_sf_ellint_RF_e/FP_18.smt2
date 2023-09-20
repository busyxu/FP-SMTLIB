(declare-fun d_ack!328 () (_ BitVec 32))
(declare-fun a_ack!329 () (_ BitVec 64))
(declare-fun b_ack!326 () (_ BitVec 64))
(declare-fun c_ack!327 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!328 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!329) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!326) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!327) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!329)
                    ((_ to_fp 11 53) b_ack!326))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!329)
                    ((_ to_fp 11 53) c_ack!327))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!326)
                    ((_ to_fp 11 53) c_ack!327))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!329) ((_ to_fp 11 53) b_ack!326))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!326) ((_ to_fp 11 53) c_ack!327)))

(check-sat)
(exit)
