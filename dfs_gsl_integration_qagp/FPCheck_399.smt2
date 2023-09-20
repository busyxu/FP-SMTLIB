(declare-fun limit_ack!6794 () (_ BitVec 64))
(declare-fun epsabs_ack!6799 () (_ BitVec 64))
(declare-fun epsrel_ack!6793 () (_ BitVec 64))
(declare-fun a_ack!6800 () (_ BitVec 64))
(declare-fun x1_ack!6795 () (_ BitVec 64))
(declare-fun x2_ack!6796 () (_ BitVec 64))
(declare-fun x3_ack!6797 () (_ BitVec 64))
(declare-fun b_ack!6798 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6794)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6799) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6793)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6793)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6795) ((_ to_fp 11 53) a_ack!6800))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6796) ((_ to_fp 11 53) x1_ack!6795))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6797) ((_ to_fp 11 53) x2_ack!6796))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6798) ((_ to_fp 11 53) x3_ack!6797))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6800)
                                   ((_ to_fp 11 53) x1_ack!6795))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6795)
                                   ((_ to_fp 11 53) a_ack!6800)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6800)
                    ((_ to_fp 11 53) x1_ack!6795)))
    a!1)))

(check-sat)
(exit)
