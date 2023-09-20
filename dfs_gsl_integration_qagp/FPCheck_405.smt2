(declare-fun limit_ack!6914 () (_ BitVec 64))
(declare-fun epsabs_ack!6919 () (_ BitVec 64))
(declare-fun epsrel_ack!6913 () (_ BitVec 64))
(declare-fun a_ack!6920 () (_ BitVec 64))
(declare-fun x1_ack!6915 () (_ BitVec 64))
(declare-fun x2_ack!6916 () (_ BitVec 64))
(declare-fun x3_ack!6917 () (_ BitVec 64))
(declare-fun b_ack!6918 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6914)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6919) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6913)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6913)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6915) ((_ to_fp 11 53) a_ack!6920))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6916) ((_ to_fp 11 53) x1_ack!6915))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6917) ((_ to_fp 11 53) x2_ack!6916))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6918) ((_ to_fp 11 53) x3_ack!6917))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6920)
                                   ((_ to_fp 11 53) x1_ack!6915))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6915)
                                   ((_ to_fp 11 53) a_ack!6920)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6920)
                                   ((_ to_fp 11 53) x1_ack!6915)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
