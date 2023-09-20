(declare-fun a_ack!193 () (_ BitVec 64))
(declare-fun c_ack!192 () (_ BitVec 64))
(declare-fun b_ack!191 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!193) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!191)
                           ((_ to_fp 11 53) b_ack!191))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!193))
                           ((_ to_fp 11 53) c_ack!192)))))
  (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!191) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.gt ((_ to_fp 11 53) b_ack!191)
                         ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff))))
  (FPCHECK_FADD_OVERFLOW
    b_ack!191
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x7ff0000000000000)))))

(check-sat)
(exit)
