(declare-fun limit_ack!505 () (_ BitVec 64))
(declare-fun a_ack!506 () (_ BitVec 64))
(declare-fun b_ack!502 () (_ BitVec 64))
(declare-fun epsabs_ack!504 () (_ BitVec 64))
(declare-fun c_ack!503 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!505)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!502) ((_ to_fp 11 53) a_ack!506))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!504)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!503) ((_ to_fp 11 53) a_ack!506))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!503) ((_ to_fp 11 53) b_ack!502))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!502)
                       ((_ to_fp 11 53) a_ack!506))
               ((_ to_fp 11 53) a_ack!506))
       ((_ to_fp 11 53) b_ack!502)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!502)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!502)
                       ((_ to_fp 11 53) a_ack!506)))
       ((_ to_fp 11 53) a_ack!506)))

(check-sat)
(exit)
