(declare-fun limit_ack!2337 () (_ BitVec 64))
(declare-fun epsabs_ack!2342 () (_ BitVec 64))
(declare-fun a_ack!2343 () (_ BitVec 64))
(declare-fun x1_ack!2338 () (_ BitVec 64))
(declare-fun x2_ack!2339 () (_ BitVec 64))
(declare-fun x3_ack!2340 () (_ BitVec 64))
(declare-fun b_ack!2341 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2337)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2342)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2338) ((_ to_fp 11 53) a_ack!2343))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2339) ((_ to_fp 11 53) x1_ack!2338))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2340) ((_ to_fp 11 53) x2_ack!2339))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2341) ((_ to_fp 11 53) x3_ack!2340))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2343)
                                   ((_ to_fp 11 53) x1_ack!2338))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2338)
                                   ((_ to_fp 11 53) a_ack!2343)))
                   ((_ to_fp 11 53) #x3fe5bdb9228de198))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2343)
                    ((_ to_fp 11 53) x1_ack!2338)))
    a!1)))

(check-sat)
(exit)
