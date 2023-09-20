(declare-fun a_ack!1309 () (_ BitVec 32))
(declare-fun c_ack!1308 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!1307 () (_ BitVec 64))
(assert (not (bvslt a_ack!1309 #x00000000)))
(assert (not (= #x00000000 a_ack!1309)))
(assert (not (= #x00000001 a_ack!1309)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1308) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 a_ack!1309))
(assert (bvsle #x00000003 a_ack!1309))
(assert (bvsle #x00000004 a_ack!1309))
(assert (bvsle #x00000005 a_ack!1309))
(assert (bvsle #x00000006 a_ack!1309))
(assert (bvsle #x00000007 a_ack!1309))
(assert (bvsle #x00000008 a_ack!1309))
(assert (bvsle #x00000009 a_ack!1309))
(assert (bvsle #x0000000a a_ack!1309))
(assert (bvsle #x0000000b a_ack!1309))
(assert (bvsle #x0000000c a_ack!1309))
(assert (bvsle #x0000000d a_ack!1309))
(assert (bvsle #x0000000e a_ack!1309))
(assert (bvsle #x0000000f a_ack!1309))
(assert (bvsle #x00000010 a_ack!1309))
(assert (bvsle #x00000011 a_ack!1309))
(assert (bvsle #x00000012 a_ack!1309))
(assert (bvsle #x00000013 a_ack!1309))
(assert (bvsle #x00000014 a_ack!1309))
(assert (bvsle #x00000015 a_ack!1309))
(assert (bvsle #x00000016 a_ack!1309))
(assert (bvsle #x00000017 a_ack!1309))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1307)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1307)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1307)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1307)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1307)
                                   ((_ to_fp 11 53) #x4014000000000000))
                           ((_ to_fp 11 53) #x4014000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1307)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4018000000000000)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1307)
                                   ((_ to_fp 11 53) #x401c000000000000))
                           ((_ to_fp 11 53) #x401c000000000000)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1307)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x4020000000000000)))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1307)
                                   ((_ to_fp 11 53) #x4022000000000000))
                           ((_ to_fp 11 53) #x4022000000000000)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1307)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x4024000000000000)))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!1307)
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x4026000000000000)))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!1307)
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x4028000000000000)))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!1307)
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x402a000000000000)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!1307)
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x402c000000000000)))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!1307)
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x402e000000000000)))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!1307)
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x4030000000000000)))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!1307)
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53) #x4031000000000000)))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!1307)
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53) #x4032000000000000)))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!1307)
                                    ((_ to_fp 11 53) #x4033000000000000))
                            ((_ to_fp 11 53) #x4033000000000000)))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!1307)
                                    ((_ to_fp 11 53) #x4034000000000000))
                            ((_ to_fp 11 53) #x4034000000000000)))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!19
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!1307)
                                    ((_ to_fp 11 53) #x4035000000000000))
                            ((_ to_fp 11 53) #x4035000000000000)))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!1307)
                                    ((_ to_fp 11 53) #x4036000000000000))
                            ((_ to_fp 11 53) #x4036000000000000)))))
  (FPCHECK_FMUL_OVERFLOW
    a!21
    (fp.div roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1307)
                    ((_ to_fp 11 53) #x4037000000000000))
            ((_ to_fp 11 53) #x4037000000000000)))))))))))))))))))))))))

(check-sat)
(exit)
