(declare-fun a_ack!213 () (_ BitVec 32))
(declare-fun b_ack!212 () (_ BitVec 64))
(assert (not (bvslt a_ack!213 #x000003e8)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!213 #x00000024)))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvmul #x00000002 a_ack!213))
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
