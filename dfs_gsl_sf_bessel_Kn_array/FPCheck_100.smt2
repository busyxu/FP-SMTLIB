(declare-fun a_ack!419 () (_ BitVec 32))
(declare-fun b_ack!417 () (_ BitVec 32))
(declare-fun c_ack!418 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!419 #x00000000)))
(assert (not (bvslt b_ack!417 a_ack!419)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!418) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!417))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!418) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!418) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!418))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!418)
                       ((_ to_fp 11 53) c_ack!418))
               ((_ to_fp 11 53) c_ack!418))
       ((_ to_fp 11 53) c_ack!418)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!418))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!418)
                       ((_ to_fp 11 53) c_ack!418))
               ((_ to_fp 11 53) c_ack!418))
       ((_ to_fp 11 53) c_ack!418)))
(assert (FPCHECK_FADD_OVERFLOW
  #x3e14c2029d5d2fb5
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!418)
                  ((_ to_fp 11 53) c_ack!418))
          ((_ to_fp 11 53) #x3d9d141fcb837472))))

(check-sat)
(exit)
