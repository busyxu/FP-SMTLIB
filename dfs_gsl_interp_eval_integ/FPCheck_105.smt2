(declare-fun x1_ack!1153 () (_ BitVec 64))
(declare-fun x0_ack!1157 () (_ BitVec 64))
(declare-fun x2_ack!1154 () (_ BitVec 64))
(declare-fun b_ack!1156 () (_ BitVec 64))
(declare-fun a_ack!1155 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1157) ((_ to_fp 11 53) x1_ack!1153)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1153) ((_ to_fp 11 53) x2_ack!1154)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1153)
                       ((_ to_fp 11 53) x0_ack!1157))
               ((_ to_fp 11 53) x0_ack!1157))
       ((_ to_fp 11 53) x1_ack!1153)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1153)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1153)
                       ((_ to_fp 11 53) x0_ack!1157)))
       ((_ to_fp 11 53) x0_ack!1157)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1154)
                       ((_ to_fp 11 53) x1_ack!1153))
               ((_ to_fp 11 53) x1_ack!1153))
       ((_ to_fp 11 53) x2_ack!1154)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1154)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1154)
                       ((_ to_fp 11 53) x1_ack!1153)))
       ((_ to_fp 11 53) x1_ack!1153)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1153)
                    ((_ to_fp 11 53) x0_ack!1157))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1154)
                    ((_ to_fp 11 53) x1_ack!1153))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1155) ((_ to_fp 11 53) b_ack!1156))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1155) ((_ to_fp 11 53) x0_ack!1157))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1156) ((_ to_fp 11 53) x2_ack!1154))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1155) ((_ to_fp 11 53) b_ack!1156))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1155) ((_ to_fp 11 53) x0_ack!1157))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1155) ((_ to_fp 11 53) x1_ack!1153))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1156) ((_ to_fp 11 53) x0_ack!1157))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1156) ((_ to_fp 11 53) x1_ack!1153)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1153) ((_ to_fp 11 53) b_ack!1156))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1153)
                    ((_ to_fp 11 53) x0_ack!1157))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1155)
                  ((_ to_fp 11 53) x0_ack!1157))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1155)
                  ((_ to_fp 11 53) x0_ack!1157)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1153)
                  ((_ to_fp 11 53) x0_ack!1157))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1153)
                  ((_ to_fp 11 53) x0_ack!1157)))))

(check-sat)
(exit)
