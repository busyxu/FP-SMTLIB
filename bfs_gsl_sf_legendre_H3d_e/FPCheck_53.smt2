(declare-fun c_ack!292 () (_ BitVec 64))
(declare-fun a_ack!293 () (_ BitVec 32))
(declare-fun b_ack!291 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!292) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!292) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!293)))
(assert (not (= #x00000001 a_ack!293)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!292) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!291))
                          ((_ to_fp 11 53) c_ack!292))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul a_ack!293 a_ack!293))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!291))
                           (fp.abs ((_ to_fp 11 53) b_ack!291))))))
  (FPCHECK_FDIV_UNDERFLOW a!1 #x7ff8000000000001)))

(check-sat)
(exit)
