(declare-fun limit_ack!5654 () (_ BitVec 64))
(declare-fun a_ack!5655 () (_ BitVec 64))
(declare-fun b_ack!5650 () (_ BitVec 64))
(declare-fun epsabs_ack!5652 () (_ BitVec 64))
(declare-fun epsrel_ack!5653 () (_ BitVec 64))
(declare-fun c_ack!5651 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!5654)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!5650) ((_ to_fp 11 53) a_ack!5655)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5652) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5653)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5653)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5651) ((_ to_fp 11 53) a_ack!5655))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5651) ((_ to_fp 11 53) b_ack!5650))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5651))
                   ((_ to_fp 11 53) a_ack!5655))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!5650))
                 ((_ to_fp 11 53) b_ack!5650))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5651))
                   ((_ to_fp 11 53) a_ack!5655))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!5650)))
         ((_ to_fp 11 53) b_ack!5650))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5651))
                           ((_ to_fp 11 53) a_ack!5655))
                   ((_ to_fp 11 53) b_ack!5650))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5655)
                                   ((_ to_fp 11 53) b_ack!5650))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5650)
                           ((_ to_fp 11 53) a_ack!5655))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5655)
                                   ((_ to_fp 11 53) b_ack!5650)))
                   ((_ to_fp 11 53) #x3fee5f178e7c6229))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x1f96a09e663b59f1)))
      (a!5 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!4)))
                   ((_ to_fp 11 53) #x1f746b175301848d)))
      (a!6 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!4)))
                   ((_ to_fp 11 53) #x1f9f9719f460e766))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!5651)))
                   ((_ to_fp 11 53) #x3fcad04f9087090f)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!5
                           (fp.sub roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!1 a!4)
                                   ((_ to_fp 11 53) c_ack!5651)))
                   (fp.div roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!1 a!4)
                                   ((_ to_fp 11 53) c_ack!5651))))))
  (FPCHECK_FADD_OVERFLOW
    a!3
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fb026cdaa7b61c4) a!7))))))

(check-sat)
(exit)
