(declare-fun e_ack!179 () (_ BitVec 32))
(declare-fun a_ack!180 () (_ BitVec 64))
(declare-fun b_ack!176 () (_ BitVec 64))
(declare-fun c_ack!177 () (_ BitVec 64))
(declare-fun d_ack!178 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!179 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!180) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!176) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!177) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!180)
                    ((_ to_fp 11 53) b_ack!176))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!180)
                    ((_ to_fp 11 53) c_ack!177))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!176)
                    ((_ to_fp 11 53) c_ack!177))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!178) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!180) ((_ to_fp 11 53) b_ack!176)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!180) ((_ to_fp 11 53) c_ack!177)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!180) ((_ to_fp 11 53) d_ack!178))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!178) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!180)
                       ((_ to_fp 11 53) b_ack!176))
               ((_ to_fp 11 53) a_ack!180))
       ((_ to_fp 11 53) b_ack!176)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!180)
                       ((_ to_fp 11 53) b_ack!176))
               ((_ to_fp 11 53) b_ack!176))
       ((_ to_fp 11 53) a_ack!180)))

(check-sat)
(exit)
