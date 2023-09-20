(declare-fun x1_ack!2521 () (_ BitVec 64))
(declare-fun x0_ack!2525 () (_ BitVec 64))
(declare-fun x2_ack!2522 () (_ BitVec 64))
(declare-fun b_ack!2524 () (_ BitVec 64))
(declare-fun a_ack!2523 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2525) ((_ to_fp 11 53) x1_ack!2521)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2521) ((_ to_fp 11 53) x2_ack!2522)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2521)
                       ((_ to_fp 11 53) x0_ack!2525))
               ((_ to_fp 11 53) x0_ack!2525))
       ((_ to_fp 11 53) x1_ack!2521)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2521)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2521)
                       ((_ to_fp 11 53) x0_ack!2525)))
       ((_ to_fp 11 53) x0_ack!2525)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2522)
                       ((_ to_fp 11 53) x1_ack!2521))
               ((_ to_fp 11 53) x1_ack!2521))
       ((_ to_fp 11 53) x2_ack!2522)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2522)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2522)
                       ((_ to_fp 11 53) x1_ack!2521)))
       ((_ to_fp 11 53) x1_ack!2521)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2521)
                    ((_ to_fp 11 53) x0_ack!2525))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2522)
                    ((_ to_fp 11 53) x1_ack!2521))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2523) ((_ to_fp 11 53) b_ack!2524))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2523) ((_ to_fp 11 53) x0_ack!2525))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2524) ((_ to_fp 11 53) x2_ack!2522))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2523) ((_ to_fp 11 53) b_ack!2524))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2523) ((_ to_fp 11 53) x0_ack!2525))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2523) ((_ to_fp 11 53) x1_ack!2521))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2524) ((_ to_fp 11 53) x0_ack!2525))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2524) ((_ to_fp 11 53) x1_ack!2521)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2521) ((_ to_fp 11 53) b_ack!2524))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2521)
                    ((_ to_fp 11 53) x0_ack!2525))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2522)
                    ((_ to_fp 11 53) x1_ack!2521))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2521)
          ((_ to_fp 11 53) x1_ack!2521))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2524)
          ((_ to_fp 11 53) x1_ack!2521))))

(check-sat)
(exit)
