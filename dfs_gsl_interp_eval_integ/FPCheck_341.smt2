(declare-fun x1_ack!4125 () (_ BitVec 64))
(declare-fun x0_ack!4129 () (_ BitVec 64))
(declare-fun x2_ack!4126 () (_ BitVec 64))
(declare-fun b_ack!4128 () (_ BitVec 64))
(declare-fun a_ack!4127 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4129) ((_ to_fp 11 53) x1_ack!4125)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4125) ((_ to_fp 11 53) x2_ack!4126)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4125)
                       ((_ to_fp 11 53) x0_ack!4129))
               ((_ to_fp 11 53) x0_ack!4129))
       ((_ to_fp 11 53) x1_ack!4125)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4125)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4125)
                       ((_ to_fp 11 53) x0_ack!4129)))
       ((_ to_fp 11 53) x0_ack!4129)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4126)
                       ((_ to_fp 11 53) x1_ack!4125))
               ((_ to_fp 11 53) x1_ack!4125))
       ((_ to_fp 11 53) x2_ack!4126)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4126)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4126)
                       ((_ to_fp 11 53) x1_ack!4125)))
       ((_ to_fp 11 53) x1_ack!4125)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4125)
                    ((_ to_fp 11 53) x0_ack!4129))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4126)
                    ((_ to_fp 11 53) x1_ack!4125))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4127) ((_ to_fp 11 53) b_ack!4128))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4127) ((_ to_fp 11 53) x0_ack!4129))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4128) ((_ to_fp 11 53) x2_ack!4126))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4127) ((_ to_fp 11 53) b_ack!4128))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4127) ((_ to_fp 11 53) x0_ack!4129))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4127) ((_ to_fp 11 53) x1_ack!4125))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4128) ((_ to_fp 11 53) x0_ack!4129))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4128) ((_ to_fp 11 53) x1_ack!4125))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4125)
                    ((_ to_fp 11 53) x0_ack!4129))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!4128 a_ack!4127))

(check-sat)
(exit)
