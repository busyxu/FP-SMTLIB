(declare-fun x1_ack!189 () (_ BitVec 64))
(declare-fun x0_ack!193 () (_ BitVec 64))
(declare-fun x2_ack!190 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!191 () (_ BitVec 64))
(declare-fun y2_ack!192 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!193) ((_ to_fp 11 53) x1_ack!189)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!189) ((_ to_fp 11 53) x2_ack!190)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!189)
                       ((_ to_fp 11 53) x0_ack!193))
               ((_ to_fp 11 53) x0_ack!193))
       ((_ to_fp 11 53) x1_ack!189)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!189)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!189)
                       ((_ to_fp 11 53) x0_ack!193)))
       ((_ to_fp 11 53) x0_ack!193)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!190)
                       ((_ to_fp 11 53) x1_ack!189))
               ((_ to_fp 11 53) x1_ack!189))
       ((_ to_fp 11 53) x2_ack!190)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!190)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!190)
                       ((_ to_fp 11 53) x1_ack!189)))
       ((_ to_fp 11 53) x1_ack!189)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!189)
                    ((_ to_fp 11 53) x0_ack!193))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!190)
                    ((_ to_fp 11 53) x1_ack!189))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!192)
          ((_ to_fp 11 53) y1_ack!191))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!190)
                  ((_ to_fp 11 53) x1_ack!189)))))

(check-sat)
(exit)
