(declare-fun limit_ack!6186 () (_ BitVec 64))
(declare-fun a_ack!6187 () (_ BitVec 64))
(declare-fun b_ack!6183 () (_ BitVec 64))
(declare-fun epsabs_ack!6185 () (_ BitVec 64))
(declare-fun c_ack!6184 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!6186)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6183) ((_ to_fp 11 53) a_ack!6187))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6185)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6184) ((_ to_fp 11 53) a_ack!6187))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6184) ((_ to_fp 11 53) b_ack!6183))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6183)
                       ((_ to_fp 11 53) a_ack!6187))
               ((_ to_fp 11 53) a_ack!6187))
       ((_ to_fp 11 53) b_ack!6183)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!6183)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6183)
                       ((_ to_fp 11 53) a_ack!6187)))
       ((_ to_fp 11 53) a_ack!6187)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6184))
                           ((_ to_fp 11 53) b_ack!6183))
                   ((_ to_fp 11 53) a_ack!6187))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6183)
                                   ((_ to_fp 11 53) a_ack!6187))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!6187))
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
