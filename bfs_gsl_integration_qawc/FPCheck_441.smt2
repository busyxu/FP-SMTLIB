(declare-fun limit_ack!5804 () (_ BitVec 64))
(declare-fun a_ack!5805 () (_ BitVec 64))
(declare-fun b_ack!5800 () (_ BitVec 64))
(declare-fun epsabs_ack!5802 () (_ BitVec 64))
(declare-fun epsrel_ack!5803 () (_ BitVec 64))
(declare-fun c_ack!5801 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5804)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!5800) ((_ to_fp 11 53) a_ack!5805)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5802) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5803)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5803)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5801) ((_ to_fp 11 53) a_ack!5805))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5801) ((_ to_fp 11 53) b_ack!5800))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5801))
                   ((_ to_fp 11 53) a_ack!5805))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!5800))
                 ((_ to_fp 11 53) b_ack!5800))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5801))
                   ((_ to_fp 11 53) a_ack!5805))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!5800)))
         ((_ to_fp 11 53) b_ack!5800))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5801))
                           ((_ to_fp 11 53) a_ack!5805))
                   ((_ to_fp 11 53) b_ack!5800))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5805)
                                   ((_ to_fp 11 53) b_ack!5800))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5805)
                  ((_ to_fp 11 53) b_ack!5800)))
  #x3fe7ba9f9be3a1d6))

(check-sat)
(exit)
