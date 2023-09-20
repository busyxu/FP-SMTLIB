(declare-fun x1_ack!2511 () (_ BitVec 64))
(declare-fun x0_ack!2515 () (_ BitVec 64))
(declare-fun x2_ack!2512 () (_ BitVec 64))
(declare-fun b_ack!2514 () (_ BitVec 64))
(declare-fun a_ack!2513 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2515) ((_ to_fp 11 53) x1_ack!2511)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2511) ((_ to_fp 11 53) x2_ack!2512)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2511)
                       ((_ to_fp 11 53) x0_ack!2515))
               ((_ to_fp 11 53) x0_ack!2515))
       ((_ to_fp 11 53) x1_ack!2511)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2511)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2511)
                       ((_ to_fp 11 53) x0_ack!2515)))
       ((_ to_fp 11 53) x0_ack!2515)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2512)
                       ((_ to_fp 11 53) x1_ack!2511))
               ((_ to_fp 11 53) x1_ack!2511))
       ((_ to_fp 11 53) x2_ack!2512)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2512)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2512)
                       ((_ to_fp 11 53) x1_ack!2511)))
       ((_ to_fp 11 53) x1_ack!2511)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2511)
                    ((_ to_fp 11 53) x0_ack!2515))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2512)
                    ((_ to_fp 11 53) x1_ack!2511))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2513) ((_ to_fp 11 53) b_ack!2514))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2513) ((_ to_fp 11 53) x0_ack!2515))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2514) ((_ to_fp 11 53) x2_ack!2512))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2513) ((_ to_fp 11 53) b_ack!2514))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2513) ((_ to_fp 11 53) x0_ack!2515))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2513) ((_ to_fp 11 53) x1_ack!2511))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2514) ((_ to_fp 11 53) x0_ack!2515))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2514) ((_ to_fp 11 53) x1_ack!2511)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2511) ((_ to_fp 11 53) b_ack!2514))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2511)
                    ((_ to_fp 11 53) x0_ack!2515))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2512)
                    ((_ to_fp 11 53) x1_ack!2511))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2511)
                  ((_ to_fp 11 53) x1_ack!2511))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2511)
                  ((_ to_fp 11 53) x1_ack!2511)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2514)
                  ((_ to_fp 11 53) x1_ack!2511))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2514)
                  ((_ to_fp 11 53) x1_ack!2511)))))

(check-sat)
(exit)
