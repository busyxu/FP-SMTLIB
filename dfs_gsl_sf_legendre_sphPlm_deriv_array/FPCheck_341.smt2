(declare-fun b_ack!1884 () (_ BitVec 32))
(declare-fun a_ack!1886 () (_ BitVec 32))
(declare-fun c_ack!1885 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!1884 #x00000000)))
(assert (not (bvslt a_ack!1886 b_ack!1884)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1885) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1885) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!1884))
(assert (not (bvslt a_ack!1886 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1885) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1885) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!1886)))
(assert (not (= #x00000001 a_ack!1886)))
(assert (bvsle #x00000002 a_ack!1886))
(assert (bvsle #x00000003 a_ack!1886))
(assert (bvsle #x00000004 a_ack!1886))
(assert (bvsle #x00000005 a_ack!1886))
(assert (bvsle #x00000006 a_ack!1886))
(assert (bvsle #x00000007 a_ack!1886))
(assert (bvsle #x00000008 a_ack!1886))
(assert (bvsle #x00000009 a_ack!1886))
(assert (bvsle #x0000000a a_ack!1886))
(assert (bvsle #x0000000b a_ack!1886))
(assert (bvsle #x0000000c a_ack!1886))
(assert (bvsle #x0000000d a_ack!1886))
(assert (bvsle #x0000000e a_ack!1886))
(assert (bvsle #x0000000f a_ack!1886))
(assert (bvsle #x00000010 a_ack!1886))
(assert (bvsle #x00000011 a_ack!1886))
(assert (bvsle #x00000012 a_ack!1886))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1885)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) c_ack!1885))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1885)
                                   ((_ to_fp 11 53) #x4014000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1885)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1885)
                                   ((_ to_fp 11 53) #x401c000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1885)
                                   ((_ to_fp 11 53) #x4022000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1885)
                                   ((_ to_fp 11 53) #x4026000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4014000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1885)
                                   ((_ to_fp 11 53) #x402a000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4018000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1885)
                                   ((_ to_fp 11 53) #x402e000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x401c000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401c000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1885)
                                   ((_ to_fp 11 53) #x4031000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4020000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1885)
                                   ((_ to_fp 11 53) #x4033000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x4022000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4020000000000000))))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1885)
                                    ((_ to_fp 11 53) #x4035000000000000))
                            (fp.div roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x4024000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1885)
                                    ((_ to_fp 11 53) #x4037000000000000))
                            (fp.div roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x4026000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4026000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1885)
                                    ((_ to_fp 11 53) #x4039000000000000))
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4028000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4028000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1885)
                                    ((_ to_fp 11 53) #x403b000000000000))
                            (fp.div roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x402a000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x402a000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4028000000000000))))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1885)
                                    ((_ to_fp 11 53) #x403d000000000000))
                            (fp.div roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x402c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x402c000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1885)
                                    ((_ to_fp 11 53) #x403f000000000000))
                            (fp.div roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x402e000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x402e000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1885)
                                    ((_ to_fp 11 53) #x4040800000000000))
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4030000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4030000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1885)
                                    ((_ to_fp 11 53) #x4041800000000000))
                            (fp.div roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x4031000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4031000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4030000000000000))))))
  (FPCHECK_FDIV_ACCURACY a!17 #x4032000000000000)))))))))))))))))))

(check-sat)
(exit)
