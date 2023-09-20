(declare-fun limit_ack!206 () (_ BitVec 64))
(declare-fun epsabs_ack!205 () (_ BitVec 64))
(declare-fun b_ack!207 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!206)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!205)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!207)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!207)
                       ((_ to_fp 11 53) #x4043264061f2d8c9))
               ((_ to_fp 11 53) #x4043264061f2d8c9))
       ((_ to_fp 11 53) b_ack!207)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!207)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!207)
                       ((_ to_fp 11 53) #x4043264061f2d8c9)))
       ((_ to_fp 11 53) #x4043264061f2d8c9)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!207)
          ((_ to_fp 11 53) #x4043264061f2d8c9))))

(check-sat)
(exit)
