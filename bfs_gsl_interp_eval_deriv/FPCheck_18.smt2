(declare-fun x1_ack!124 () (_ BitVec 64))
(declare-fun x0_ack!126 () (_ BitVec 64))
(declare-fun x2_ack!125 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!126) ((_ to_fp 11 53) x1_ack!124)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!124) ((_ to_fp 11 53) x2_ack!125)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!124)
                       ((_ to_fp 11 53) x0_ack!126))
               ((_ to_fp 11 53) x0_ack!126))
       ((_ to_fp 11 53) x1_ack!124)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!124)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!124)
                       ((_ to_fp 11 53) x0_ack!126)))
       ((_ to_fp 11 53) x0_ack!126)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!125)
                       ((_ to_fp 11 53) x1_ack!124))
               ((_ to_fp 11 53) x1_ack!124))
       ((_ to_fp 11 53) x2_ack!125)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!125)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!125)
                       ((_ to_fp 11 53) x1_ack!124)))
       ((_ to_fp 11 53) x1_ack!124)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!124)
                    ((_ to_fp 11 53) x0_ack!126))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!125)
                    ((_ to_fp 11 53) x1_ack!124))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!125)
          ((_ to_fp 11 53) x1_ack!124))))

(check-sat)
(exit)
