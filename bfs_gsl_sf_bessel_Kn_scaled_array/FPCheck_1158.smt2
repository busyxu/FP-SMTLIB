(declare-fun a_ack!4525 () (_ BitVec 32))
(declare-fun b_ack!4523 () (_ BitVec 32))
(declare-fun c_ack!4524 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!4525 #x00000000)))
(assert (not (bvslt b_ack!4523 a_ack!4525)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4524) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!4523)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4524) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4524) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4524) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4524))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4524)
                       ((_ to_fp 11 53) c_ack!4524))
               ((_ to_fp 11 53) c_ack!4524))
       ((_ to_fp 11 53) c_ack!4524)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4524))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4524)
                       ((_ to_fp 11 53) c_ack!4524))
               ((_ to_fp 11 53) c_ack!4524))
       ((_ to_fp 11 53) c_ack!4524)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!4524)
          ((_ to_fp 11 53) c_ack!4524))
  #x3d9d141fcb837472))

(check-sat)
(exit)
