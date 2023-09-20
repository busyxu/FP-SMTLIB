(declare-fun a_ack!4603 () (_ BitVec 32))
(declare-fun b_ack!4601 () (_ BitVec 32))
(declare-fun c_ack!4602 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!4603 #x00000000)))
(assert (not (bvslt b_ack!4601 a_ack!4603)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4602) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!4601))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4602) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4602) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4602))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4602)
                       ((_ to_fp 11 53) c_ack!4602))
               ((_ to_fp 11 53) c_ack!4602))
       ((_ to_fp 11 53) c_ack!4602)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4602))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4602)
                       ((_ to_fp 11 53) c_ack!4602))
               ((_ to_fp 11 53) c_ack!4602))
       ((_ to_fp 11 53) c_ack!4602)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!4602)
          ((_ to_fp 11 53) c_ack!4602))
  #x3d9d141fcb837472))

(check-sat)
(exit)
