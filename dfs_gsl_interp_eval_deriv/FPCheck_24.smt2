(declare-fun x1_ack!160 () (_ BitVec 64))
(declare-fun x0_ack!162 () (_ BitVec 64))
(declare-fun x2_ack!161 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!162) ((_ to_fp 11 53) x1_ack!160)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!160) ((_ to_fp 11 53) x2_ack!161)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!160)
                       ((_ to_fp 11 53) x0_ack!162))
               ((_ to_fp 11 53) x0_ack!162))
       ((_ to_fp 11 53) x1_ack!160)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!160)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!160)
                       ((_ to_fp 11 53) x0_ack!162)))
       ((_ to_fp 11 53) x0_ack!162)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!161)
                       ((_ to_fp 11 53) x1_ack!160))
               ((_ to_fp 11 53) x1_ack!160))
       ((_ to_fp 11 53) x2_ack!161)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!161)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!161)
                       ((_ to_fp 11 53) x1_ack!160)))
       ((_ to_fp 11 53) x1_ack!160)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!160)
                    ((_ to_fp 11 53) x0_ack!162))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!161)
                    ((_ to_fp 11 53) x1_ack!160))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!161)
                  ((_ to_fp 11 53) x1_ack!160))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!160)
                  ((_ to_fp 11 53) x0_ack!162)))))

(check-sat)
(exit)
