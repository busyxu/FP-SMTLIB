(declare-fun limit_ack!6446 () (_ BitVec 64))
(declare-fun epsabs_ack!6451 () (_ BitVec 64))
(declare-fun a_ack!6452 () (_ BitVec 64))
(declare-fun x1_ack!6447 () (_ BitVec 64))
(declare-fun x2_ack!6448 () (_ BitVec 64))
(declare-fun x3_ack!6449 () (_ BitVec 64))
(declare-fun b_ack!6450 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6446)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6451)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6447) ((_ to_fp 11 53) a_ack!6452))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6448) ((_ to_fp 11 53) x1_ack!6447))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6449) ((_ to_fp 11 53) x2_ack!6448))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6450) ((_ to_fp 11 53) x3_ack!6449))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6452)
                                   ((_ to_fp 11 53) x1_ack!6447))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6447)
                                   ((_ to_fp 11 53) a_ack!6452)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6452)
                    ((_ to_fp 11 53) x1_ack!6447)))
    a!1)))

(check-sat)
(exit)
