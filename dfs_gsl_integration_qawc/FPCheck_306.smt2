(declare-fun limit_ack!4736 () (_ BitVec 64))
(declare-fun a_ack!4737 () (_ BitVec 64))
(declare-fun b_ack!4732 () (_ BitVec 64))
(declare-fun epsabs_ack!4734 () (_ BitVec 64))
(declare-fun epsrel_ack!4735 () (_ BitVec 64))
(declare-fun c_ack!4733 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!4736)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4732) ((_ to_fp 11 53) a_ack!4737))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4734) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4735)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4735)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4733) ((_ to_fp 11 53) a_ack!4737))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4733) ((_ to_fp 11 53) b_ack!4732))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4733))
                   ((_ to_fp 11 53) b_ack!4732))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!4737))
                 ((_ to_fp 11 53) a_ack!4737))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4733))
                   ((_ to_fp 11 53) b_ack!4732))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!4737)))
         ((_ to_fp 11 53) a_ack!4737))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4733))
                           ((_ to_fp 11 53) b_ack!4732))
                   ((_ to_fp 11 53) a_ack!4737))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!4732)
                               ((_ to_fp 11 53) a_ack!4737))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4733))
                           ((_ to_fp 11 53) b_ack!4732))
                   ((_ to_fp 11 53) a_ack!4737))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4732)
                                   ((_ to_fp 11 53) a_ack!4737))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4737)
                           ((_ to_fp 11 53) b_ack!4732)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x1f86a09e667f3bcd))))
  (FPCHECK_FDIV_INVALID
    a!2
    (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!4733))))))

(check-sat)
(exit)
