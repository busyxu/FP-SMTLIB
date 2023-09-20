(declare-fun c_ack!547 () (_ BitVec 64))
(declare-fun a_ack!548 () (_ BitVec 32))
(declare-fun b_ack!546 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cosh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!547) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!548 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!547) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!548)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!547) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!547) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!548)))
(assert (not (= #x00000001 a_ack!548)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!547) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!546))
                          ((_ to_fp 11 53) c_ack!547))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul a_ack!548 a_ack!548))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!546))
                           (fp.abs ((_ to_fp 11 53) b_ack!546))))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3ff0000000000000))
    (fp.mul roundNearestTiesToEven (CF_cosh c_ack!547) (CF_cosh c_ack!547)))))

(check-sat)
(exit)
