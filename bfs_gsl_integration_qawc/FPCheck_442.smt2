(declare-fun limit_ack!5816 () (_ BitVec 64))
(declare-fun a_ack!5817 () (_ BitVec 64))
(declare-fun b_ack!5812 () (_ BitVec 64))
(declare-fun epsabs_ack!5814 () (_ BitVec 64))
(declare-fun epsrel_ack!5815 () (_ BitVec 64))
(declare-fun c_ack!5813 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5816)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!5812) ((_ to_fp 11 53) a_ack!5817)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5814) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5815)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5815)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5813) ((_ to_fp 11 53) a_ack!5817))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5813) ((_ to_fp 11 53) b_ack!5812))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5813))
                   ((_ to_fp 11 53) a_ack!5817))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!5812))
                 ((_ to_fp 11 53) b_ack!5812))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5813))
                   ((_ to_fp 11 53) a_ack!5817))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!5812)))
         ((_ to_fp 11 53) b_ack!5812))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5813))
                           ((_ to_fp 11 53) a_ack!5817))
                   ((_ to_fp 11 53) b_ack!5812))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5817)
                                   ((_ to_fp 11 53) b_ack!5812))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5817)
                  ((_ to_fp 11 53) b_ack!5812)))
  #x3fe7ba9f9be3a1d6))

(check-sat)
(exit)
