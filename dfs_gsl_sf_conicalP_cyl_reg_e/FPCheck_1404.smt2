(declare-fun c_ack!6850 () (_ BitVec 64))
(declare-fun a_ack!6851 () (_ BitVec 32))
(declare-fun b_ack!6849 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6850) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!6851 #xffffffff)))
(assert (not (= #xffffffff a_ack!6851)))
(assert (= #x00000000 a_ack!6851))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6850) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6850) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!6849) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6850) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!6850) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!6849) ((_ to_fp 11 53) #x4031000000000000)))
(assert (let ((a!1 (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6850)
                                   ((_ to_fp 11 53) c_ack!6850)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!6850)
                       ((_ to_fp 11 53) c_ack!6850)))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fe0000000000000)
                                  ((_ to_fp 11 53) b_ack!6849)))
                  ((_ to_fp 11 53) #x4034000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!6850)
               ((_ to_fp 11 53) c_ack!6850))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) b_ack!6849))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) b_ack!6849))))

(check-sat)
(exit)
