(declare-fun c_ack!882 () (_ BitVec 64))
(declare-fun a_ack!883 () (_ BitVec 32))
(declare-fun b_ack!881 () (_ BitVec 64))
(declare-fun CF_cosh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_tanh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!882) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!883 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!882) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!883)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!882) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!882) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!883)))
(assert (not (= #x00000001 a_ack!883)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!882) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!881))
                          ((_ to_fp 11 53) c_ack!882))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul a_ack!883 a_ack!883))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!881))
                           (fp.abs ((_ to_fp 11 53) b_ack!881))))))
(let ((a!2 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3ff0000000000000))
                          (fp.mul roundNearestTiesToEven
                                  (CF_cosh c_ack!882)
                                  (CF_cosh c_ack!882)))
                  ((_ to_fp 11 53) #x3effbf7e4e8cc9d1))))
  (not a!2))))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!881))
                  (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x408f400000000000)
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!883))
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!883)))))
  (not a!1)))
(assert (FPCHECK_FDIV_UNDERFLOW #x3ff0000000000000 (CF_tanh c_ack!882)))

(check-sat)
(exit)
