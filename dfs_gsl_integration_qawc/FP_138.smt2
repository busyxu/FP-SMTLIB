(declare-fun limit_ack!6391 () (_ BitVec 64))
(declare-fun a_ack!6392 () (_ BitVec 64))
(declare-fun b_ack!6388 () (_ BitVec 64))
(declare-fun epsabs_ack!6390 () (_ BitVec 64))
(declare-fun c_ack!6389 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!6391)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6388) ((_ to_fp 11 53) a_ack!6392))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6390)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6389) ((_ to_fp 11 53) a_ack!6392))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6389) ((_ to_fp 11 53) b_ack!6388))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6388)
                       ((_ to_fp 11 53) a_ack!6392))
               ((_ to_fp 11 53) a_ack!6392))
       ((_ to_fp 11 53) b_ack!6388)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!6388)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6388)
                       ((_ to_fp 11 53) a_ack!6392)))
       ((_ to_fp 11 53) a_ack!6392)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6389))
                           ((_ to_fp 11 53) b_ack!6388))
                   ((_ to_fp 11 53) a_ack!6392))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6388)
                                   ((_ to_fp 11 53) a_ack!6392))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!6392))
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
