(declare-fun limit_ack!550 () (_ BitVec 64))
(declare-fun a_ack!551 () (_ BitVec 64))
(declare-fun b_ack!547 () (_ BitVec 64))
(declare-fun epsabs_ack!549 () (_ BitVec 64))
(declare-fun c_ack!548 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!550)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!547) ((_ to_fp 11 53) a_ack!551))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!549)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!548) ((_ to_fp 11 53) a_ack!551))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!548) ((_ to_fp 11 53) b_ack!547))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!547)
                       ((_ to_fp 11 53) a_ack!551))
               ((_ to_fp 11 53) a_ack!551))
       ((_ to_fp 11 53) b_ack!547)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!547)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!547)
                       ((_ to_fp 11 53) a_ack!551)))
       ((_ to_fp 11 53) a_ack!551)))

(check-sat)
(exit)
