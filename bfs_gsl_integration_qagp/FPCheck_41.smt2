(declare-fun limit_ack!699 () (_ BitVec 64))
(declare-fun epsabs_ack!704 () (_ BitVec 64))
(declare-fun a_ack!705 () (_ BitVec 64))
(declare-fun x1_ack!700 () (_ BitVec 64))
(declare-fun x2_ack!701 () (_ BitVec 64))
(declare-fun x3_ack!702 () (_ BitVec 64))
(declare-fun b_ack!703 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!699)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!704)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!700) ((_ to_fp 11 53) a_ack!705))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!701) ((_ to_fp 11 53) x1_ack!700))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!702) ((_ to_fp 11 53) x2_ack!701))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!703) ((_ to_fp 11 53) x3_ack!702))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!705)
                                   ((_ to_fp 11 53) x1_ack!700))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!700)
                                   ((_ to_fp 11 53) a_ack!705)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!705)
                    ((_ to_fp 11 53) x1_ack!700)))
    a!1)))

(check-sat)
(exit)
