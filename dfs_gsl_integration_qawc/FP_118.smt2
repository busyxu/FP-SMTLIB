(declare-fun limit_ack!5651 () (_ BitVec 64))
(declare-fun a_ack!5652 () (_ BitVec 64))
(declare-fun b_ack!5648 () (_ BitVec 64))
(declare-fun epsabs_ack!5650 () (_ BitVec 64))
(declare-fun c_ack!5649 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!5651)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5648) ((_ to_fp 11 53) a_ack!5652))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5650)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5649) ((_ to_fp 11 53) a_ack!5652))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5649) ((_ to_fp 11 53) b_ack!5648))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5648)
                       ((_ to_fp 11 53) a_ack!5652))
               ((_ to_fp 11 53) a_ack!5652))
       ((_ to_fp 11 53) b_ack!5648)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!5648)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5648)
                       ((_ to_fp 11 53) a_ack!5652)))
       ((_ to_fp 11 53) a_ack!5652)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5649))
                           ((_ to_fp 11 53) b_ack!5648))
                   ((_ to_fp 11 53) a_ack!5652))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5648)
                                   ((_ to_fp 11 53) a_ack!5652))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))

(check-sat)
(exit)
