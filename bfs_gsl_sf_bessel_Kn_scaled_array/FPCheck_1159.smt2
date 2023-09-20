(declare-fun a_ack!4528 () (_ BitVec 32))
(declare-fun b_ack!4526 () (_ BitVec 32))
(declare-fun c_ack!4527 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!4528 #x00000000)))
(assert (not (bvslt b_ack!4526 a_ack!4528)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4527) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!4526)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4527) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4527) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4527) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4527))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4527)
                       ((_ to_fp 11 53) c_ack!4527))
               ((_ to_fp 11 53) c_ack!4527))
       ((_ to_fp 11 53) c_ack!4527)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4527))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4527)
                       ((_ to_fp 11 53) c_ack!4527))
               ((_ to_fp 11 53) c_ack!4527))
       ((_ to_fp 11 53) c_ack!4527)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!4527)
          ((_ to_fp 11 53) c_ack!4527))
  #x3d9d141fcb837472))

(check-sat)
(exit)
