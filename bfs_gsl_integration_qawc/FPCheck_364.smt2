(declare-fun limit_ack!4664 () (_ BitVec 64))
(declare-fun a_ack!4665 () (_ BitVec 64))
(declare-fun b_ack!4660 () (_ BitVec 64))
(declare-fun epsabs_ack!4662 () (_ BitVec 64))
(declare-fun epsrel_ack!4663 () (_ BitVec 64))
(declare-fun c_ack!4661 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4664)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4660) ((_ to_fp 11 53) a_ack!4665)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4662) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4663)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4663)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4661) ((_ to_fp 11 53) a_ack!4665))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4661) ((_ to_fp 11 53) b_ack!4660))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4661))
                   ((_ to_fp 11 53) a_ack!4665))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4660))
                 ((_ to_fp 11 53) b_ack!4660))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4661))
                   ((_ to_fp 11 53) a_ack!4665))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4660)))
         ((_ to_fp 11 53) b_ack!4660))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4661))
                           ((_ to_fp 11 53) a_ack!4665))
                   ((_ to_fp 11 53) b_ack!4660))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4665)
                                   ((_ to_fp 11 53) b_ack!4660))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4660)
                  ((_ to_fp 11 53) a_ack!4665)))
  c_ack!4661))

(check-sat)
(exit)
