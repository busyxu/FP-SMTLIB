(declare-fun limit_ack!6432 () (_ BitVec 64))
(declare-fun epsabs_ack!6437 () (_ BitVec 64))
(declare-fun a_ack!6438 () (_ BitVec 64))
(declare-fun x1_ack!6433 () (_ BitVec 64))
(declare-fun x2_ack!6434 () (_ BitVec 64))
(declare-fun x3_ack!6435 () (_ BitVec 64))
(declare-fun b_ack!6436 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6432)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6437)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6433) ((_ to_fp 11 53) a_ack!6438))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6434) ((_ to_fp 11 53) x1_ack!6433))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6435) ((_ to_fp 11 53) x2_ack!6434))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6436) ((_ to_fp 11 53) x3_ack!6435))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6438)
                                   ((_ to_fp 11 53) x1_ack!6433))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6433)
                                   ((_ to_fp 11 53) a_ack!6438)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6438)
                    ((_ to_fp 11 53) x1_ack!6433)))
    a!1)))

(check-sat)
(exit)
