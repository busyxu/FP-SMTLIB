(declare-fun a_ack!4576 () (_ BitVec 32))
(declare-fun b_ack!4574 () (_ BitVec 32))
(declare-fun c_ack!4575 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!4576 #x00000000)))
(assert (not (bvslt b_ack!4574 a_ack!4576)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4575) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!4574))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4575) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4575) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4575))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4575)
                       ((_ to_fp 11 53) c_ack!4575))
               ((_ to_fp 11 53) c_ack!4575))
       ((_ to_fp 11 53) c_ack!4575)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4575))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4575)
                       ((_ to_fp 11 53) c_ack!4575))
               ((_ to_fp 11 53) c_ack!4575))
       ((_ to_fp 11 53) c_ack!4575)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!4575)
          ((_ to_fp 11 53) c_ack!4575))
  #x3d9d141fcb837472))

(check-sat)
(exit)
