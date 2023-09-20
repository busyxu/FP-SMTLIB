(declare-fun limit_ack!6978 () (_ BitVec 64))
(declare-fun epsabs_ack!6983 () (_ BitVec 64))
(declare-fun epsrel_ack!6977 () (_ BitVec 64))
(declare-fun a_ack!6984 () (_ BitVec 64))
(declare-fun x1_ack!6979 () (_ BitVec 64))
(declare-fun x2_ack!6980 () (_ BitVec 64))
(declare-fun x3_ack!6981 () (_ BitVec 64))
(declare-fun b_ack!6982 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6978)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6983) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6977)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6977)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6979) ((_ to_fp 11 53) a_ack!6984))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6980) ((_ to_fp 11 53) x1_ack!6979))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6981) ((_ to_fp 11 53) x2_ack!6980))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6982) ((_ to_fp 11 53) x3_ack!6981))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6984)
                                   ((_ to_fp 11 53) x1_ack!6979))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6979)
                                   ((_ to_fp 11 53) a_ack!6984)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6984)
                                   ((_ to_fp 11 53) x1_ack!6979)))
                   a!1)))
  (FPCHECK_FDIV_OVERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
