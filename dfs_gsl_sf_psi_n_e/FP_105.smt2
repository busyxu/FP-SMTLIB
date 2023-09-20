(declare-fun a_ack!2227 () (_ BitVec 32))
(declare-fun b_ack!2226 () (_ BitVec 64))
(assert (not (= #x00000000 a_ack!2227)))
(assert (not (= #x00000001 a_ack!2227)))
(assert (not (bvslt a_ack!2227 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2226) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2227)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!2226) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
