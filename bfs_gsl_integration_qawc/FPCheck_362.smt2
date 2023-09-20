(declare-fun limit_ack!4640 () (_ BitVec 64))
(declare-fun a_ack!4641 () (_ BitVec 64))
(declare-fun b_ack!4636 () (_ BitVec 64))
(declare-fun epsabs_ack!4638 () (_ BitVec 64))
(declare-fun epsrel_ack!4639 () (_ BitVec 64))
(declare-fun c_ack!4637 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4640)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4636) ((_ to_fp 11 53) a_ack!4641)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4638) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4639)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4639)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4637) ((_ to_fp 11 53) a_ack!4641))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4637) ((_ to_fp 11 53) b_ack!4636))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4637))
                   ((_ to_fp 11 53) a_ack!4641))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4636))
                 ((_ to_fp 11 53) b_ack!4636))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4637))
                   ((_ to_fp 11 53) a_ack!4641))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4636)))
         ((_ to_fp 11 53) b_ack!4636))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4637))
                           ((_ to_fp 11 53) a_ack!4641))
                   ((_ to_fp 11 53) b_ack!4636))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4641)
                                   ((_ to_fp 11 53) b_ack!4636))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4636)
                  ((_ to_fp 11 53) a_ack!4641)))
  c_ack!4637))

(check-sat)
(exit)
